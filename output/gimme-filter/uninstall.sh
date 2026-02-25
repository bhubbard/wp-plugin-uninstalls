#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taxonomies_list'
wp option delete 'post_type_list'
wp option delete 'gimme_output_options'

