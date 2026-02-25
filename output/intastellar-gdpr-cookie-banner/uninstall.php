<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intastellarCustomIcon');
delete_site_option('intastellarCustomIcon');
delete_option('intastellarCookieBannerColor');
delete_site_option('intastellarCookieBannerColor');
delete_option('intastellarCookieBannerBrandName');
delete_site_option('intastellarCookieBannerBrandName');
delete_option('intastellarPrivacyLink');
delete_site_option('intastellarPrivacyLink');
delete_option('intastellarPrivacyLinkCheckbox');
delete_site_option('intastellarPrivacyLinkCheckbox');
delete_option('intastellarSetCookiePosition');
delete_site_option('intastellarSetCookiePosition');
delete_option('intastellarDisplayCookieNoticeText');
delete_site_option('intastellarDisplayCookieNoticeText');
delete_option('intastellarSelectLanguage');
delete_site_option('intastellarSelectLanguage');
delete_option('intastellarCCPA');
delete_site_option('intastellarCCPA');
delete_option('intastellarCCPAUrl');
delete_site_option('intastellarCCPAUrl');
delete_option('intastellarDisplayCookieAdvenced');
delete_site_option('intastellarDisplayCookieAdvenced');
delete_option('intastellarCCPAcollection');
delete_site_option('intastellarCCPAcollection');
delete_option('intastellarCookieList');
delete_site_option('intastellarCookieList');
delete_option('intastellarSiteRoot');
delete_site_option('intastellarSiteRoot');
delete_option('intastellarBannerStyle');
delete_site_option('intastellarBannerStyle');
delete_option('intastellarPluginVersion');
delete_site_option('intastellarPluginVersion');
delete_option('intastellar_plugin_activated_at');
delete_site_option('intastellar_plugin_activated_at');
delete_option('intastellar_review_prompt_dismissed');
delete_site_option('intastellar_review_prompt_dismissed');
delete_option('intastellarCookieBanner-brandName');
delete_site_option('intastellarCookieBanner-brandName');
delete_option('intastellarPrivacyLink-checkbox');
delete_site_option('intastellarPrivacyLink-checkbox');
delete_option('intastellarCookieBanner');
delete_site_option('intastellarCookieBanner');

// Delete Transients
delete_transient('intastellar_activation_redirect');
delete_site_transient('intastellar_activation_redirect');

