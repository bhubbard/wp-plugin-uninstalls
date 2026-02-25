#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trm_gdpr_overwrite_notice_form_consent'
wp option delete 'trm_gdpr_default_notice_form_consent'
wp option delete 'trm_gdpr_overwrite_notice_consent_bar'
wp option delete 'trm_gdpr_default_notice_consent_bar'
wp option delete 'trm_gdpr_close_consent_functions'
wp option delete 'trm_gdpr_dynamic_style'
wp option delete '__trm_gdpr_version'
wp option delete 'trm_gdpr_disable_hide_existing_links'
wp option delete 'trm_gdpr_disable_form_consent'
wp option delete 'trm_gdpr_disable_consent_bar'
wp option delete 'trm_gdpr_disable_subfooter'
wp option delete 'trm_gdpr_governing_state'
wp option delete 'trm_gdpr_governing_country'
wp option delete 'trm_gdpr_company_name'
wp option delete 'trm_gdpr_company_address'
wp option delete 'trm_gdpr_company_phone'
wp option delete 'trm_gdpr_company_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient___cached_svn_%' OR option_name LIKE '_site_transient___cached_svn_%'"

