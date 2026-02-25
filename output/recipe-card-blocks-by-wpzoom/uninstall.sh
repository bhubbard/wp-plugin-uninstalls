#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpzoom_rcb_do_activation_redirect'
wp option delete 'wpzoom_search_recipes_cards_time'
wp option delete 'wpzoom_credits'
wp option delete 'wpzoom_import_wprm_recipes'

# Delete Transients
wp transient delete 'wpzoom_rcb_search_recipe_box'
wp transient delete 'wpzoom_rcb_welcome_banner'
wp transient delete 'reblex_reusable_registered_stylesheets'
wp transient delete 'wpzoom_rcb_plugin_user_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_rcb_parent_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_rcb_parent_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_rcb_parent_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_rcb_parent_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcb-recipe-slug-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcb-recipe-slug-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcb-recipe-slug-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcb-recipe-slug-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_rcb_used_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_rcb_used_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_rcb_used_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_rcb_used_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_rcb_has_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_rcb_has_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_rcb_has_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_rcb_has_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpzoom_rcb_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpzoom_rcb_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpzoom_rcb_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpzoom_rcb_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpzoom_rcb_imported_wprm_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpzoom_rcb_imported_wprm_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpzoom_rcb_imported_wprm_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpzoom_rcb_imported_wprm_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_pinterest_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_pinterest_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_pinterest_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_pinterest_text'"
