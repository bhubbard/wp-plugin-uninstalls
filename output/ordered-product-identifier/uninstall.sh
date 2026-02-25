#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_compat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wpinvdl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enbl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prefix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_radio_opt'"
wp option delete 'ced_feed'
wp option delete 'ced_feed_opi'

