#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scheduler_main'
wp option delete 'scheduler_version'
wp option delete 'scheduler_xml'
wp option delete 'scheduler_xml_version'

