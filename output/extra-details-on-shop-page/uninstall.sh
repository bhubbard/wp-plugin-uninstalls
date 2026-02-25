#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EDSP_separator_format'
wp option delete 'EDSP_attributes'
wp option delete 'EDSP_classes'
wp option delete 'EDSP_options'

