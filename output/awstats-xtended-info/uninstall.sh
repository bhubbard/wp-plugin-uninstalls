#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awext_ishome'
wp option delete 'awext_issingle'
wp option delete 'awext_ispage'
wp option delete 'awext_isarchive'
wp option delete 'awext_issearch'
wp option delete 'awext_is404'

