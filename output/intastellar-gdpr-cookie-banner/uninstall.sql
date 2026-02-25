-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intastellarCustomIcon', 'intastellarCookieBannerColor', 'intastellarCookieBannerBrandName', 'intastellarPrivacyLink', 'intastellarPrivacyLinkCheckbox', 'intastellarSetCookiePosition', 'intastellarDisplayCookieNoticeText', 'intastellarSelectLanguage', 'intastellarCCPA', 'intastellarCCPAUrl', 'intastellarDisplayCookieAdvenced', 'intastellarCCPAcollection', 'intastellarCookieList', 'intastellarSiteRoot', 'intastellarBannerStyle', 'intastellarPluginVersion', 'intastellar_plugin_activated_at', 'intastellar_review_prompt_dismissed', 'intastellarCookieBanner-brandName', 'intastellarPrivacyLink-checkbox', 'intastellarCookieBanner', 'intastellar_activation_redirect');

