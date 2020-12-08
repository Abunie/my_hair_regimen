import 'package:myhairregimen/models/routine.dart';
class Data {
  static List<Routine> routines = [
    Routine(
        id: '1',
        title: 'Clarify/Shampoo',
        imageUrl:
        'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        benefits: [
          Benefits(name: 'Scalp Health', weight: '200', percent: 1.0),
          Benefits(name: 'Scalp PH', weight: '10gm', percent: 0.5),
          Benefits(name: 'Unclogged Pores', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Detangle before washing your hair either with your fingers, a wide tooth comb or a detangling brush',
          'Divide your hair into manageable sections.',
          'Do not ruffle hair on top of head.',
          'Turn away from the water and allow your hair to hang down, let the water run down it.',
          'Massage the shampoo onto your scalp and smooth the suds down the length of your hair.',
          'Only apply shampoo 1-2 times to clean the hair.',
          'Rinse with warm (for low porosity) or cold(medium/high porosity) water',
        ],
        items: [
          'shampoo',
          'detangle brush(optional)',
          'wide tooth comb(optional)',
          'scalp massager(optional)'
        ]),
    Routine(
        id: '2',
        title: 'Cappuccino',
        imageUrl:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',
        benefits: [
          Benefits(name: 'Calories', weight: '200', percent: 0.7),
          Benefits(name: 'Protein', weight: '10gm', percent: 0.5),
          Benefits(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        items: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Routine(
        id: '3',
        title: 'Spaghetti',
        imageUrl:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
        benefits: [
          Benefits(name: 'Calories', weight: '100', percent: 0.2),
          Benefits(name: 'Protein', weight: '10gm', percent: 0.7),
          Benefits(name: 'Carb', weight: '50gm', percent: 0.6),
          Benefits(name: 'Fat', weight: '10gm', percent: 0.3),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        items: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Routine(
        id: '4',
        title: 'Pizza',
        imageUrl:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
        benefits: [
          Benefits(name: 'Calories', weight: '200', percent: 0.7),
          Benefits(name: 'Protein', weight: '10gm', percent: 0.5),
          Benefits(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        items: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
  ];
}
