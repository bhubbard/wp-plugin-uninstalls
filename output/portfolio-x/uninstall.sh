#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'ot_css_file_paths'
wp option delete 'qcpx_details_page_width'
wp option delete 'qcpx_details_page_width_val'
wp option delete 'qcld_template_links'
wp option delete 'qcpx_list_page_width'
wp option delete 'qcpx_list_page_width_val'
wp option delete 'qcld_post_per_page'
wp option delete 'qcld_link_title'
wp option delete 'qcpo_tpl1_serial_number'
wp option delete 'qcpo_tpl1_color_scheme'
wp option delete 'qcpo_tpl1_qcld_img_border_radius'
wp option delete 'qcpo_tpl2_item_border_radius'
wp option delete 'qcpo_tpl2_item_margin_tp'
wp option delete 'qcpo_tpl2_item_margin_rt'
wp option delete 'qcpo_tpl2_item_margin_bt'
wp option delete 'qcpo_tpl2_item_margin_lt'
wp option delete 'qcld_port_custom_css'
wp option delete 'qx_ot_convrt'
wp option delete 'qcpx_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_sort_post_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_sort_post_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_sort_post_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_sort_post_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_port_settings_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_port_settings_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_port_settings_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_port_settings_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_port_settings_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_port_settings_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_port_settings_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_port_settings_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_port_settings_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_port_settings_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_port_settings_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_port_settings_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qc_portfoliourl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qc_portfoliourl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qc_portfoliourl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qc_portfoliourl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_wysiwyg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_wysiwyg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_wysiwyg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_wysiwyg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_disp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_disp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_disp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_disp_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_technology'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_technology'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_technology'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_technology'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_project_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_project_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_project_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_project_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_portfolio_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_portfolio_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_portfolio_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_portfolio_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcld_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcld_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcld_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcld_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcld_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcld_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcld_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcld_end_date'"
