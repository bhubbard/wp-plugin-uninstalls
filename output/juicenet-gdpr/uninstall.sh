#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'juicenet_gdpr_nome_sito'
wp option delete 'juicenet_gdpr_titolare_sito'
wp option delete 'juicenet_gdpr_email_sito'
wp option delete 'juicenet_gdpr_cookie_page'
wp option delete 'juicenet_gdpr_privacy_page'
wp option delete 'juicenet_gdpr_show_banner'
wp option delete 'juicenet_gdpr_google_analytics_code'
wp option delete 'juicenet_gdpr_link_blank'
wp option delete 'juicenet_gdpr_testo_link'
wp option delete 'juicenet_gdpr_testo_deny'
wp option delete 'juicenet_gdpr_testo_allow'
wp option delete 'juicenet_gdpr_testo_banner'
wp option delete 'juicenet_gdpr_popup_color'
wp option delete 'juicenet_gdpr_button_color'

