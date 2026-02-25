#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postorbit_webhook_secret'
wp option delete 'postorbit_settings'
wp option delete 'postorbit_version'

# Delete Transients
wp transient delete 'postorbit_api_status'

# Clear Cron Jobs
wp cron event delete 'postorbit_daily_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postorbit_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postorbit_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postorbit_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postorbit_article_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
