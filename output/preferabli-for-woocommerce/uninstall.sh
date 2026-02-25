#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wr4wc_plugin_options'
wp option delete 'p4wc_plugin_options'
wp option delete 'p4wc_db_version'
wp option delete 'p4wc_feed_hash'
wp option delete 'wr4wc_feed_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preferabli_label_checked_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preferabli_label_checked_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preferabli_label_checked_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preferabli_label_checked_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preferabli_label_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preferabli_label_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preferabli_label_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preferabli_label_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preferabli_label_expires_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preferabli_label_expires_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preferabli_label_expires_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preferabli_label_expires_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
