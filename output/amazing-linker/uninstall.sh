#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amazing_linker_review_notice'
wp option delete 'amazing-linker-activation-time'
wp option delete 'widget_amazing_linker_product_widget'
wp option delete 'amazing_linker_credential_tab_option'
wp option delete 'amazing_linker_associate_tab_option'
wp option delete 'amazing_linker_settings_tab_option'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'amazing_linker_product_update'

