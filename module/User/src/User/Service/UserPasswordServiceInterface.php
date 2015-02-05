<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace User\Service;

/**
 *
 * @author avogel
 */
interface UserPasswordServiceInterface 
{
    public function updatePassword($user, $plainPassword);
    
    public function isSatisfied($user, $password);
}