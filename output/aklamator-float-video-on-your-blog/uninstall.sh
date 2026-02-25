#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aklamatorFVChannelURL'
wp option delete 'aklamatorFVApplicationID'
wp option delete 'aklamatorFVPoweredBy'
wp option delete 'aklamatorFVSingleWidgetID'
wp option delete 'aklamatorFVPageWidgetID'
wp option delete 'aklamatorFVSingleWidgetTitle'
wp option delete 'aklamatorFVShowOrDontShow'
wp option delete 'aklamatorFVPhotoURL'
wp option delete 'aklamatorFVintroURL'

