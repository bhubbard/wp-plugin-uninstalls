#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etgwtlt_pluginurl'
wp option delete 'etgwtlt_xmllocation'
wp option delete 'etgwtlt_pause'
wp option delete 'etgwtlt_transduration'
wp option delete 'etgwtlt_title'

