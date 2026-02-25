#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opm_options'
wp option delete '_opm_messages'
wp option delete 'starterpack_options'
wp option delete 'opm_do_activation_redirect'

