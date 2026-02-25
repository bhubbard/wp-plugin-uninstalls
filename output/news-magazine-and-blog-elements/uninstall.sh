#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ata_news_admin_notice_%'"
wp option delete 'ata_news_admin_notice_hide'
wp option delete 'ata_news_typography'
wp option delete 'ata_news_color_scheme'

