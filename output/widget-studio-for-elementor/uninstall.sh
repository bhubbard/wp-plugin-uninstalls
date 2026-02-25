#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsfe_widget_registration_form'
wp option delete 'wsfe_plugin_just_activated'
wp option delete 'rewrite_rules'

