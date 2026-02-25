#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scfm_label_position'
wp option delete 'scfm_error_position'
wp option delete 'scfm_stylish_options'
wp option delete 'scfm_delete_data_on_uninstall'
wp option delete 'scfm_required_indicator'
wp option delete 'scfm_custom_fields'
wp option delete 'scfm_version'

