#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pinterest_master_system_wide'
wp option delete 'pinterest_master_system_wide_size_small'
wp option delete 'pinterest_master_system_wide_size_large'
wp option delete 'pinterest_master_system_wide_shape_rectangular'
wp option delete 'pinterest_master_system_wide_shape_circular'
wp option delete 'pinterest_master_system_wide_size'
wp option delete 'pinterest_master_system_wide_shape'
wp option delete 'pinterest_master_system_wide_hover'
wp option delete 'tsm_quote'

