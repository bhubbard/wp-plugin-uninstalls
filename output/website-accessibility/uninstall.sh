#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'websac_settings'
wp option delete 'websac_version'
wp option delete 'websac_installed_time'
wp option delete 'websac_do_activation_redirect'

