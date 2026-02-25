#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sa11y_settings'
wp option delete 'sa11y_network_target'
wp option delete 'sa11y_network_developer_checks'
wp option delete 'sa11y_network_readability'
wp option delete 'sa11y_network_readability_target'
wp option delete 'sa11y_network_readability_ignore'
wp option delete 'sa11y_network_region_ignore'
wp option delete 'sa11y_network_contrast_ignore'
wp option delete 'sa11y_network_outline_ignore'
wp option delete 'sa11y_network_header_ignore'
wp option delete 'sa11y_network_image_ignore'
wp option delete 'sa11y_network_link_ignore'
wp option delete 'sa11y_network_link_ignore_span'
wp option delete 'sa11y_network_link_flag'
wp option delete 'sa11y_network_noRun'
wp option delete 'sa11y_network_shadow_components'
wp option delete 'sa11y_network_extra_props'
wp option delete 'sa11y_edit_image_link'
wp option delete 'sa11y_network_panel_position'
wp option delete 'sa11y_network_form_labels'
wp option delete 'sa11y_network_contrast'
wp option delete 'sa11y_network_links_advanced'
wp option delete 'sa11y_network_colour_filter'
wp option delete 'sa11y_network_all_checks'

