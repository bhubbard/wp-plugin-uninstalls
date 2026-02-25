#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cssor_style'
wp option delete 'cssor_minify'
wp option delete 'cssor_load'
wp option delete 'cssor_dependency'
wp option delete 'cssor_method'

