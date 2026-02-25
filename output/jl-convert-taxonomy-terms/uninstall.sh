#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jlconverttax-save-hierarchy'
wp option delete 'jlconverttax-from-taxonomy'
wp option delete 'jlconverttax-to-taxonomy'
wp option delete 'jlconverttax-checked-categories'

