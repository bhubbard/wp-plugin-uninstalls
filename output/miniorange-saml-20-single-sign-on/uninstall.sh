#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_saml_htaccess_updated'
wp option delete 'mo_saml_assertion_time_validity'
wp option delete 'mo_saml_message'
wp option delete 'mo_saml_multisite_notice_dismissed_time'
wp option delete 'mo_saml_black_friday_sale_notice_dismissed'
wp option delete 'mo_saml_black_friday_sale_notice_dismissed_time'
wp option delete 'mo_saml_keep_settings_on_deletion'
wp option delete 'saml_am_default_user_role'

