//
//  viewTeste.m
//  Animalia
//
//  Created by Ada 2018 on 26/03/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "viewTeste.h"
#import "CollectionViewCell.h"
#import "Animal.h"
#import "AnimalViewController.h"

@interface viewTeste ()
{
    NSMutableArray *filteredAnimals;
    bool isFiltered;
    NSMutableArray *animals;
    NSMutableArray *imgOrigamiArray;
    NSMutableArray *textoOrigamiArray;
    NSString *textoOrigami;
    NSString *textoFeito;
    UIImage *imageOrigamiStep;
}

@end


@implementation viewTeste

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isFiltered = false;
    _searchBar.delegate = self;
    
    Animal * apatosaurus = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"apatosaurus"] andNomeOrigami:@"Apatosaurus" andImgInsideOrigami:[UIImage imageNamed:@"apatosaurusOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Apatosaurus"];
    
    Animal * carangueijo = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"carangueijo"] andNomeOrigami:@"Carangueijo" andImgInsideOrigami:[UIImage imageNamed:@"carangueijoOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Carangueijo"];
    
    Animal * cisne = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"cisne"] andNomeOrigami:@"Cisne" andImgInsideOrigami:[UIImage imageNamed:@"cisneOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Cisne"];
    
    Animal * cobra = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"cobra"] andNomeOrigami:@"Cobra" andImgInsideOrigami:[UIImage imageNamed:@"cobraOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Cobra"];
    
    Animal * escorpiao = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"escorpiao"] andNomeOrigami:@"Escorpião" andImgInsideOrigami:[UIImage imageNamed:@"escorpiaoOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Escorpião"];
    
    Animal * leaoMarinho = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"leaoMarinho"] andNomeOrigami:@"Leão Marinho" andImgInsideOrigami:[UIImage imageNamed:@"leaoMarinhoOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Leão Marinho"];
    
    Animal * tartaruga = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"tartaruga"] andNomeOrigami:@"Tartaruga" andImgInsideOrigami:[UIImage imageNamed:@"tartarugaOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Tartaruga"];
    
    Animal * urso = [[Animal alloc] initWithImgBtn:[UIImage imageNamed:@"urso"] andNomeOrigami:@"Urso" andImgInsideOrigami:[UIImage imageNamed:@"ursoOrigami"] andTextoInsideOrigami:@"Aqui estão os passos para você fazer um origami de Urso"];
    
    animals = [@[apatosaurus, carangueijo, cisne, cobra, escorpiao, leaoMarinho, tartaruga, urso] mutableCopy];
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    [_searchBar setShowsCancelButton:YES animated:YES];
    if(searchText.length == 0){
        isFiltered = false;
    }else{
        isFiltered = true;
        filteredAnimals = [NSMutableArray new];
        
        for(Animal *animal in animals){
            NSString *animalNome = animal.nomeOrigami;
            NSRange nameRange = [animalNome rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound){
                [filteredAnimals addObject:animal];
            }
        }
    }
    [_collectionView reloadData];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [_searchBar resignFirstResponder];
    [_searchBar setShowsCancelButton:NO animated:YES];
}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(isFiltered){
        return filteredAnimals.count;
    }
    return animals.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(isFiltered){
        cell.imgAnimal.image = [filteredAnimals[indexPath.row] imgBtn];
        cell.label.text = [filteredAnimals[indexPath.row] nomeOrigami];
    }else{
        cell.imgAnimal.image = [animals[indexPath.row] imgBtn];
        cell.label.text = [animals[indexPath.row] nomeOrigami];
    }
    return cell;
}

- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"origamiSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"origamiSegue"]) {
        AnimalViewController *origamiSegue = segue.destinationViewController;
        NSArray *indexPathArray = [self.collectionView indexPathsForSelectedItems];
        NSIndexPath *indexPath = indexPathArray[0];
        
        if (isFiltered) {
            origamiSegue.textoLabelNomeCientificoAnimal = [filteredAnimals[indexPath.row] textoInsideOrigami];
            origamiSegue.imgOrigami = [filteredAnimals[indexPath.row] imgInsideOrigami];
        }
        else {
            origamiSegue.textoLabelNomeCientificoAnimal = [animals[indexPath.row] textoInsideOrigami];
            origamiSegue.imgOrigami = [animals[indexPath.row] imgInsideOrigami];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
