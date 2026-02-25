#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecard_shortcode_fix'
wp option delete 'ecard_html_fix'
wp option delete 'ecard_label_name_own'
wp option delete 'ecard_label_email_own'
wp option delete 'ecard_label_email_friend'
wp option delete 'ecard_label_message'
wp option delete 'ecard_label_success'
wp option delete 'ecard_submit'
wp option delete 'ecard_label'
wp option delete 'ecard_counter'
wp option delete 'ecard_link_anchor'
wp option delete 'ecard_behaviour'
wp option delete 'ecard_title'
wp option delete 'ecard_body_additional'
wp option delete 'ecard_body_toggle'
wp option delete 'ecard_restrictions'
wp option delete 'ecard_restrictions_message'
wp option delete 'ecard_send_behaviour'
wp option delete 'ecard_hardcoded_email'
wp option delete 'ecard_image_size'
wp option delete 'ecard_use_akismet'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'wordpress_api_key'
wp option delete 'akismet_spam_count'
wp option delete 'ecard_body_footer'
wp option delete 'ecard_noreply'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
