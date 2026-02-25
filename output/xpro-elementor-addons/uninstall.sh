#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xpro_dynamic_template_id'
wp option delete 'elementor_cpt_support'
wp option delete 'xpro_megamenu_options'
wp option delete 'xpro_elementor_addons_options'
wp option delete 'xpro_elementor_widget_list'
wp option delete 'xpro_starter_sites_attachment_data_temp'
wp option delete 'elementor_active_kit'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'xpro_elementor_global_settings'
wp option delete 'xpro_theme_builder_dismiss_notice'

# Delete Transients
wp transient delete 'adi_elementor_data_posts'
wp transient delete 'content.json'
wp transient delete 'widgets.json'
wp transient delete 'options.json'
wp transient delete 'settings.json'
wp transient delete 'delayed_posts'
wp transient delete 'imported_term_ids'
wp transient delete 'imported_post_ids'
wp transient delete 'post_orphans'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xpro_dynamic_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xpro_dynamic_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xpro_dynamic_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xpro_dynamic_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xpro_render_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xpro_render_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xpro_render_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xpro_render_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xpro_acf_repeater_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xpro_acf_repeater_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xpro_acf_repeater_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xpro_acf_repeater_name'"
