#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcdforsalertnoyes'
wp option delete 'rcdalerttext'
wp option delete 'rcdfors-csjkey'
wp option delete 'rcdforsftwelvekey'
wp option delete 'rcdfors-csckey'
wp option delete 'rcdforskey-crtlshifti'
wp option delete 'rcdfors-cukey'
wp option delete 'rcdfors_plugin_do_activate'

