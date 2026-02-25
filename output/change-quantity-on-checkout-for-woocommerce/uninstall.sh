#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cqoc_enableBlock'
wp option delete 'cqoc_addDeleteIconBlock'
wp option delete 'cqoc_addQuantityField'
wp option delete 'cqoc_hideDeleteIcon'
wp option delete 'cqoc_classic_field_position'
wp option delete 'cqoc_classic_button_style'
wp option delete 'cqoc_classic_custom_css'
wp option delete 'cqoc_block_integration_method'
wp option delete 'cqoc_block_custom_attributes'
wp option delete 'cqoc_block_enable_ajax'
wp option delete 'cqoc_selectProductCategory'

