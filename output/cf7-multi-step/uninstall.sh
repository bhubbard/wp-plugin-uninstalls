#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7mls_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7mls_next_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7mls_next_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7mls_next_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7mls_next_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7mls_next_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7mls_next_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7mls_next_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7mls_next_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7mls_back_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7mls_back_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7mls_back_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7mls_back_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7mls_back_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7mls_back_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7mls_back_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7mls_back_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_mls_auto_scroll_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_mls_auto_scroll_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_mls_auto_scroll_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_mls_auto_scroll_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_mls_auto_return_first_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_mls_auto_return_first_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_mls_auto_return_first_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_mls_auto_return_first_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7mls_db_save_every_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7mls_db_save_every_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7mls_db_save_every_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7mls_db_save_every_step'"
