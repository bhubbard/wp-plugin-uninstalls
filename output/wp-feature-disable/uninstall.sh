#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfd_editorautosave'
wp option delete 'wpfd_postrevisions'
wp option delete 'wpfd_commentauthurl'
wp option delete 'wpfd_generatortag'
wp option delete 'wpfd_coreupdate'

