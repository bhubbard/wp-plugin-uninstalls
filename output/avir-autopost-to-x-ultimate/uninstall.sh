#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avir_twitter_x_api_key'
wp option delete 'avir_twitter_x_api_key_secret'
wp option delete 'avir_twitter_x_access_token'
wp option delete 'avir_twitter_x_access_token_secret'
wp option delete 'avir_twitter_x_version'
wp option delete 'avir_twitter_x_char_limit'
wp option delete 'avir_twitter_x_read_more_text'
wp option delete 'avir_twitter_x_link_same_line'
wp option delete 'avir_twitter_x_link_prefix'
wp option delete 'avir_twitter_x_textarea_height'
wp option delete 'avir_twitter_x_excerpt_mode'
wp option delete 'avir_twitter_x_excerpt_length'
wp option delete 'avir_twitter_x_strip_headers'
wp option delete 'avir_twitter_x_install_date'
wp option delete 'avir_twitter_x_supported_post_types'
wp option delete 'avir_twitter_x_show_status_column'

# Delete Transients
wp transient delete 'avir_twitter_x_settings_errors'
wp transient delete 'avir_twitter_x_settings_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_post_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_post_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_post_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_post_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_post_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_post_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_post_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_post_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_hashtags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_hashtags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_hashtags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_hashtags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_hashtag_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_hashtag_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_hashtag_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_hashtag_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avir_x_custom_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avir_x_custom_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avir_x_custom_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avir_x_custom_excerpt'"
