#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SWV_options'
wp option delete 'version_major'
wp option delete 'version_minor'
wp option delete 'version_revision'
wp option delete 'version_build'
wp option delete 'TextBefore'
wp option delete 'HTMLCodeBefore'
wp option delete 'HTMLCodeAfter'
wp option delete 'nombre'
wp option delete 'RAZ_Num'

