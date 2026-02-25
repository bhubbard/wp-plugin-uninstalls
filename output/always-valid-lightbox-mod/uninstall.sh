#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'always_valid_lightbox_add_attributes'
wp option delete 'always_valid_lightbox_attribute_to_add'
wp option delete 'always_valid_lightbox_css'

