#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmdivi_initial_version'
wp option delete 'tmdivi-installDate'
wp option delete 'tmdivi-v'
wp option delete 'tmdivi-type'
wp option delete 'tmdivi-defaultPlugin'
wp option delete 'tmdivi-Boxes-ratingDiv'

