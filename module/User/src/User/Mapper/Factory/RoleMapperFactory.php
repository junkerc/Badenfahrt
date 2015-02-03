<?php

namespace User\Mapper\Factory;

use User\Mapper\DoctrineRoleMapper;
use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

/**
 * Description of UserMapperFactory
 *
 * @author Dev
 */
class RoleMapperFactory implements FactoryInterface
{

    public function createService(ServiceLocatorInterface $serviceLocator)
    {
        $entityManager = $serviceLocator->get('Doctrine\ORM\EntityManager');

        return new DoctrineRoleMapper($entityManager);
    }

}