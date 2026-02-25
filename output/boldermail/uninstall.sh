#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boldermail_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'boldermail_queue_flush_rewrite_rules'
wp option delete 'boldermail_instagram_integration'
wp option delete 'boldermail_add_default_templates'
wp option delete 'boldermail_default_templates'
wp option delete 'boldermail_active_version'
wp option delete 'boldermail_is_upgrading'
wp option delete 'boldermail_previous_version'
wp option delete 'boldermail_api'
wp option delete 'boldermail_app'
wp option delete 'boldermail_siteurl'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'boldermail_subscribers_update'
wp cron event delete 'boldermail_instagram_integration_refresh_token'
wp cron event delete 'boldermail_scheduled_newsletter_rss_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parent_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parent_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parent_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parent_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_block_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_block_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_block_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_block_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_block_template_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_block_template_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_block_template_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_block_template_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_html'"
