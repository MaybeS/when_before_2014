#ifndef _CENEMY_H_
#define _CENEMY_H_

#include <windows.h>
#include "CHp.h"
#include "CBullet.h"
#include "CEnemy_Player.h"
#define ENEMY_SIZE 25
#define MAX_ENEMY_SPEED 5
#define LEFT 1
#define RIGHT 2

class CEnemy {
	int X, Y;
	int MoveMode;
	int Delay;

	int AlphaSpeed;
	int PreKey;

	HBRUSH EnemyBrush1;
	HBRUSH EnemyBrush2;
	HPEN EnemyPen;

	CBullet *Bullet;
public:
	CEnemy();
	~CEnemy();

	BOOL CheckHit(int,int,int);

	void Update(CPlayer*, CHp*);
	void Render(HDC);
};

class CPlayerBody {
	int m_PosX, m_PosY;
public:
	CPlayerBody(int PosX, int PosY);
	~CPlayerBody();

	int GetPosX(){return m_PosX;}
	int GetPosY(){return m_PosY;}

	void Update();
	void Render(HDC hdc);
};

#endif