<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StopSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('stops')->insert([
            ['name' => 'Прoспект Королёва, 69'],
            ['name' => 'Шуваловский прoспект (Прoспект Королёва)'],
            ['name' => 'Прoспект Королёва, 57'],
            ['name' => 'Улицa Шаврова, Поликлиника'],
            ['name' => 'Улицa Шаврова (Комендантский прoспект)'],
            ['name' => 'Универсам 59'],
            ['name' => 'Долгоозёрная улицa (Комендантский прoспект)'],
            ['name' => 'Комендантский прoспект, 22'],
            ['name' => 'Комендантский прoспект, 16'],
            ['name' => 'Метро Комендантский прoспект'],

            ['name' => 'Орлово-Денисовский'],
            ['name' => 'Суздальское шоссе (Дорога в Каменку)'],
            ['name' => 'Жилгородок (Суздальское шоссе)'],
            ['name' => 'Дорога в с/х Пригородный'],
            ['name' => 'Дорога на Каменку'],
            ['name' => 'Улицa Лётчика Паршина'],
            ['name' => 'Река Каменка (Парашютная улицa)'],
            ['name' => 'Парашютная улицa, 54'],
            ['name' => 'Шуваловский прoспект (Парашютная улицa)'],
            ['name' => 'Парашютная улицa, 44'],
        ]);
    }
}
