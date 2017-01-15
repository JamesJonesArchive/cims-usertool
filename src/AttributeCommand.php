<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace USF\Idm\cims_usertool\command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Description of AttributeCommand
 *
 * @author jam
 */
class AttributeCommand extends Command {
    protected function configure() {
         $this
        // the name of the command (the part after "bin/console")
        ->setName('ad:setattribute')

        // the short description shown while running "php bin/console list"
        ->setDescription('Posts an attribute change to AD')

        // the full command description shown when running the command with
        // the "--help" option
        ->setHelp("This command allows you to post attribute changes to the AD change queue");
    }
    
    protected function execute(InputInterface $input, OutputInterface $output) {}
    
            
    //put your code here
}
