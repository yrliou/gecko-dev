# -*- Mode: Java; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*-
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# If you update this list, you may need to add a mapping within the following
# file so that ESLint works correctly:
# tools/lint/eslint/eslint-plugin-mozilla/lib/environments/browser-window.js

<script type="application/javascript" src="chrome://browser/content/browser.js"/>

<script type="application/javascript" src="chrome://browser/content/browser-captivePortal.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-compacttheme.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-feeds.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-media.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-pageActions.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-places.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-plugins.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-sidebar.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-tabsintitlebar.js"/>
<script type="application/javascript" src="chrome://browser/content/browser-trackingprotection.js"/>

#ifdef MOZ_DATA_REPORTING
<script type="application/javascript" src="chrome://browser/content/browser-data-submission-info-bar.js"/>
#endif

#ifndef MOZILLA_OFFICIAL
<script type="application/javascript" src="chrome://browser/content/browser-development-helpers.js"/>
#endif
