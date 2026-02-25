#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'share_on_mastodon_settings'
wp option delete 'share_on_mastodon_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_state' OR option_name LIKE '_site_transient_%_state'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_code_verifier' OR option_name LIKE '_site_transient_%_code_verifier'"

# Clear Cron Jobs
wp cron event delete 'share_on_mastodon_post'
wp cron event delete 'share_on_mastodon_verify_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon_cw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon_cw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon_cw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon_cw'"
