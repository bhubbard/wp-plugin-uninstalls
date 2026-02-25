#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns-gdpr-enable-comments'
wp option delete 'ns-gdpr-comments-checkbox-text'
wp option delete 'ns-gdpr-comments-checkbox-error-text'
wp option delete 'ns-gdpr-enable-cf7'
wp option delete 'ns-gdpr-enable-cf7-text'
wp option delete 'ns-gdpr-enable-cf7-error-text'
wp option delete 'test_validate_cf7'
wp option delete 'test_validate_cf7_2'
wp option delete 'ns-gdpr-enable-wc'
wp option delete 'ns-gdpr-enable-wc-text'
wp option delete 'ns-gdpr-enable-wc-error-text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
