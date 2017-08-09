/* -*- Mode: IDL; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * The origin of this WebIDL file is
 *   https://www.w3.org/TR/payment-handler/#dom-paymentrequestevent
 */

[Constructor(DOMString type, optional PaymentRequestEventInit eventInitDict),
  Exposed=ServiceWorker,
  Func="mozilla::dom::PaymentRequest::PrefEnabled"]
interface PaymentRequestEvent : ExtendableEvent {
  readonly attribute USVString                              topLevelOrigin;
  readonly attribute USVString                              paymentRequestOrigin;
  readonly attribute DOMString                              paymentRequestId;
  // TODO: Use FrozenArray once available. (Bug 1236777)
  // readonly attribute FrozenArray<PaymentMethodData>      methodData;
  [Frozen, Cached, Pure]
  readonly attribute sequence<PaymentMethodData>            methodData;
  readonly attribute object                                 total;
  // TODO: Use FrozenArray once available. (Bug 1236777)
  // readonly attribute FrozenArray<PaymentDetailsModifier> modifiers;
  [Frozen, Cached, Pure]
  readonly attribute sequence<PaymentDetailsModifier>       modifiers;
  readonly attribute DOMString                              instrumentKey;

  Promise<WindowClient> openWindow(USVString url);
  void respondWith(Promise<PaymentHandlerResponse> handlerResponse);
};

dictionary PaymentRequestEventInit : ExtendableEventInit {
  USVString                        topLevelOrigin = "";
  USVString                        paymentRequestOrigin ="";
  DOMString                        paymentRequestId = "";
  sequence<PaymentMethodData>      methodData;
  PaymentCurrencyAmount            total;
  sequence<PaymentDetailsModifier> modifiers;
  DOMString                        instrumentKey = "";
};

dictionary PaymentHandlerResponse {
  DOMString methodName;
  object    details;
};

