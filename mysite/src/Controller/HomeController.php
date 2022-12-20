<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(): Response
    {
        $ipServer = $_SERVER['SERVER_ADDR'];

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'ip_server' => $ipServer
        ]);
    }
}
