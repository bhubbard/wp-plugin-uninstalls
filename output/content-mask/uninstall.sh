#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_mask_allow_styles_download'
wp option delete 'content_mask_custom_styles_download'
wp option delete 'content_mask_allow_scripts_download'
wp option delete 'content_mask_custom_scripts_download'
wp option delete 'content_mask_allow_footer_scripts_download'
wp option delete 'content_mask_custom_footer_scripts_download'
wp option delete 'content_mask_include_return_link'
wp option delete 'content_mask_allow_standard_wp_head_iframe'
wp option delete 'content_mask_disable_iframe_title'
wp option delete 'content_mask_disable_iframe_query_parameter_identifier'
wp option delete 'content_mask_disable_iframe_query_parameter_passthrough'
wp option delete 'content_mask_allow_styles_iframe'
wp option delete 'content_mask_custom_styles_iframe'
wp option delete 'content_mask_allow_scripts_iframe'
wp option delete 'content_mask_custom_scripts_iframe'
wp option delete 'content_mask_allow_footer_scripts_iframe'
wp option delete 'content_mask_custom_footer_scripts_iframe'
wp option delete 'content_mask_return_link_label'
wp option delete 'content_mask_tracking'
wp option delete 'content_mask_user_agent_header'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'content_mask_%'"

# Delete Transients
wp transient delete 'content_mask_user_agent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_role_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_role_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_role_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_role_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_condition_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_condition_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_condition_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_condition_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_header_scripts_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_header_scripts_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_header_scripts_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_header_scripts_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_mask_transient_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_mask_transient_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_mask_transient_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_mask_transient_expiration'"
