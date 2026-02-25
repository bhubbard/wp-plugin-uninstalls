#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdbbc_activated'
wp option delete 'cdbbc-alreadyRated'
wp option delete 'cdbbc_activation_time'
wp option delete 'cdbbc_spare_me'
wp option delete 'cdbbc_email_verification'
wp option delete 'cddbc_activated'
wp option delete 'cdbbc_settings'
wp option delete 'CDBBC_do_activation_redirect'
wp option delete 'CDBBC_FRESH_INSTALLATION'
wp option delete 'cdbbc_migarte_codestar'
wp option delete 'CDBBC_FREE_VERSION'
wp option delete 'cdbbc_migarte_settings'
wp option delete 'meta_public_key'
wp option delete 'meta_private_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'cdbbc-add-wallet'
wp option delete 'cdbbc-coin-settings'

# Delete Transients
wp transient delete 'cdbbc_init_activation'
wp transient delete 'donation_auth_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_init_activation' OR option_name LIKE '_site_transient_%_init_activation'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
