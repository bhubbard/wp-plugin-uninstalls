#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sir_default_width'
wp option delete 'sir_default_height'
wp option delete 'sir_default_mode'
wp option delete 'sir_default_quality'
wp option delete 'sir_output_format'
wp option delete 'sir_filename_suffix'

