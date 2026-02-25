#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'facetwp_settings'
wp option delete 'sm_advanced_palette_output'
wp option delete 'sm_site_color_variation'
wp option delete 'novablocks_google_maps_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nb_conversation_starter_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nb_conversation_starter_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nb_conversation_starter_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nb_conversation_starter_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nb_conversation_starter_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nb_conversation_starter_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nb_conversation_starter_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nb_conversation_starter_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nb_comment_highlighted_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nb_comment_highlighted_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nb_comment_highlighted_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nb_comment_highlighted_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nb_commenter_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nb_commenter_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nb_commenter_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nb_commenter_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nb_conversation_starter_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nb_conversation_starter_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nb_conversation_starter_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nb_conversation_starter_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novablocks_hero_position_indicators'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novablocks_hero_position_indicators'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novablocks_hero_position_indicators'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novablocks_hero_position_indicators'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supernova_prevent_duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supernova_prevent_duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supernova_prevent_duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supernova_prevent_duplicate'"
