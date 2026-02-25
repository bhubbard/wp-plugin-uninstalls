#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_aa_options_google_maps_api_key'
wp option delete 'simple_aa_options_country'
wp option delete 'simple_aa_options_field_ids'
wp option delete 'simple_aa_options_bias_coordinates'
wp option delete 'simple_aa_options_restriction_type'

