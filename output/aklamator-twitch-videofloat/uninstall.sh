#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aklamatorTwitchFVChannel'
wp option delete 'aklamatorTwitchFVApplicationID'
wp option delete 'aklamatorTwitchFVPoweredBy'
wp option delete 'aklamatorTwitchFVSingleWidgetID'
wp option delete 'aklamatorTwitchFVPageWidgetID'
wp option delete 'aklamatorTwitchFVSingleWidgetTitle'
wp option delete 'aklamatorTwitchFVShowOrDontShow'
wp option delete 'aklamatorTwitchFVPhotoURL'

