#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lzyopti_global_images_to_exclude'
wp option delete 'lzyopti_replace_image'
wp option delete 'lzyopti_delete_all_data'
wp option delete 'lzyopti_already_done_single_css'
wp option delete 'autoptimize_css'

