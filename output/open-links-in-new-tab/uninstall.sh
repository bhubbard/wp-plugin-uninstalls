#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olint_open_external_link_in_new_tab'
wp option delete 'olint_open_internal_link_in_new_tab'

