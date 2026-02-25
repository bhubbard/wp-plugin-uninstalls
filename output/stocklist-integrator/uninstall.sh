#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stocklist_integrator_activation_redirect'
wp option delete 'stocklist_integrator_domain'
wp option delete 'stocklist_integrator_options'

