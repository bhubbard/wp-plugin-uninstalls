#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moove_404_redirect_options'
wp option delete 'moove_404_redirect_statistics'
wp option delete 'moove_404_general_options'
wp option delete 'moove_options'
wp option delete 'moove_404_redirect_activate'

