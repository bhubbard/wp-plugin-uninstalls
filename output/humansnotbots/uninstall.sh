#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'replacement_method'
wp option delete 'innerhtml'
wp option delete 'dom'

