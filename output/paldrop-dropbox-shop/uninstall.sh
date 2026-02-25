#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdroplogin'
wp option delete 'pdroppw'
wp option delete 'pdropuid'
wp option delete 'pdropppal'
wp option delete 'pdropactive'

