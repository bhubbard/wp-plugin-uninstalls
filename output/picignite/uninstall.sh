#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_cid'
wp option delete 'pi_show_ad'
wp option delete 'pi_align'
wp option delete 'pi_width'
wp option delete 'pi_height'
wp option delete 'pi_attr'
wp option delete 'pi_target'
wp option delete 'pi_sid'

