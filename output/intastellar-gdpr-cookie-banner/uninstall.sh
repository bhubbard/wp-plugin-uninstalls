#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intastellarCustomIcon'
wp option delete 'intastellarCookieBannerColor'
wp option delete 'intastellarCookieBannerBrandName'
wp option delete 'intastellarPrivacyLink'
wp option delete 'intastellarPrivacyLinkCheckbox'
wp option delete 'intastellarSetCookiePosition'
wp option delete 'intastellarDisplayCookieNoticeText'
wp option delete 'intastellarSelectLanguage'
wp option delete 'intastellarCCPA'
wp option delete 'intastellarCCPAUrl'
wp option delete 'intastellarDisplayCookieAdvenced'
wp option delete 'intastellarCCPAcollection'
wp option delete 'intastellarCookieList'
wp option delete 'intastellarSiteRoot'
wp option delete 'intastellarBannerStyle'
wp option delete 'intastellarPluginVersion'
wp option delete 'intastellar_plugin_activated_at'
wp option delete 'intastellar_review_prompt_dismissed'
wp option delete 'intastellarCookieBanner-brandName'
wp option delete 'intastellarPrivacyLink-checkbox'
wp option delete 'intastellarCookieBanner'

# Delete Transients
wp transient delete 'intastellar_activation_redirect'

